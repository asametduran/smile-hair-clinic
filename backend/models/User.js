const mongoose = require('mongoose');
const bcrypt = require('bcryptjs');

const userSchema = new mongoose.Schema({
  name: {
    type: String,
    required: [true, 'Ad soyad gereklidir'],
    trim: true,
    minlength: [3, 'Ad soyad en az 3 karakter olmalıdır'],
  },
  email: {
    type: String,
    required: [true, 'Email gereklidir'],
    unique: true,
    lowercase: true,
    trim: true,
    match: [/^\S+@\S+\.\S+$/, 'Geçerli bir email adresi giriniz'],
  },
  phone: {
    type: String,
    required: [true, 'Telefon numarası gereklidir'],
    trim: true,
  },
  password: {
    type: String,
    required: [true, 'Şifre gereklidir'],
    minlength: [6, 'Şifre en az 6 karakter olmalıdır'],
    select: false, // Şifre varsayılan olarak sorgu sonuçlarına dahil edilmez
  },
  photos: [{
    angle: {
      type: Number,
      required: true,
      enum: [0, 1, 2, 3, 4], // 0: Ön, 1: 45° Sağa, 2: 45° Sola, 3: Tepe, 4: Arka
    },
    url: String,
    uploadedAt: {
      type: Date,
      default: Date.now,
    },
  }],
  createdAt: {
    type: Date,
    default: Date.now,
  },
  updatedAt: {
    type: Date,
    default: Date.now,
  },
});

// Şifreyi kaydetmeden önce hash'le
userSchema.pre('save', async function(next) {
  if (!this.isModified('password')) return next();
  
  try {
    const salt = await bcrypt.genSalt(10);
    this.password = await bcrypt.hash(this.password, salt);
    next();
  } catch (error) {
    next(error);
  }
});

// Şifre karşılaştırma metodu
userSchema.methods.comparePassword = async function(candidatePassword) {
  return await bcrypt.compare(candidatePassword, this.password);
};

// updatedAt'i otomatik güncelle
userSchema.pre('save', function(next) {
  this.updatedAt = Date.now();
  next();
});

module.exports = mongoose.model('User', userSchema);

