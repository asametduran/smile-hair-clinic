const express = require('express');
const jwt = require('jsonwebtoken');
const User = require('../models/User');
const router = express.Router();

const JWT_SECRET = process.env.JWT_SECRET || 'your-secret-key-change-this';

// Token doğrulama middleware
const authenticateToken = async (req, res, next) => {
  try {
    const token = req.headers.authorization?.replace('Bearer ', '');
    
    if (!token) {
      return res.status(401).json({
        success: false,
        message: 'Token gereklidir',
      });
    }

    const decoded = jwt.verify(token, JWT_SECRET);
    const user = await User.findById(decoded.userId);
    
    if (!user) {
      return res.status(404).json({
        success: false,
        message: 'Kullanıcı bulunamadı',
      });
    }

    req.user = user;
    next();
  } catch (error) {
    res.status(401).json({
      success: false,
      message: 'Geçersiz token',
    });
  }
};

// Fotoğraf yükleme (şimdilik URL olarak)
router.post('/upload', authenticateToken, async (req, res) => {
  try {
    const { angle, url } = req.body;

    if (angle === undefined || !url) {
      return res.status(400).json({
        success: false,
        message: 'Açı ve URL gereklidir',
      });
    }

    if (![0, 1, 2, 3, 4].includes(angle)) {
      return res.status(400).json({
        success: false,
        message: 'Geçersiz açı (0-4 arası olmalı)',
      });
    }

    // Mevcut fotoğrafı kontrol et
    const existingPhotoIndex = req.user.photos.findIndex(p => p.angle === angle);
    
    if (existingPhotoIndex >= 0) {
      // Güncelle
      req.user.photos[existingPhotoIndex].url = url;
      req.user.photos[existingPhotoIndex].uploadedAt = new Date();
    } else {
      // Yeni ekle
      req.user.photos.push({ angle, url });
    }

    await req.user.save();

    res.json({
      success: true,
      message: 'Fotoğraf başarıyla yüklendi',
      data: {
        photo: req.user.photos.find(p => p.angle === angle),
      },
    });
  } catch (error) {
    console.error('Photo upload error:', error);
    res.status(500).json({
      success: false,
      message: 'Fotoğraf yükleme sırasında bir hata oluştu',
      error: error.message,
    });
  }
});

// Kullanıcının fotoğraflarını getir
router.get('/my-photos', authenticateToken, async (req, res) => {
  try {
    res.json({
      success: true,
      data: {
        photos: req.user.photos,
      },
    });
  } catch (error) {
    console.error('Get photos error:', error);
    res.status(500).json({
      success: false,
      message: 'Fotoğraflar getirilirken bir hata oluştu',
      error: error.message,
    });
  }
});

module.exports = router;

