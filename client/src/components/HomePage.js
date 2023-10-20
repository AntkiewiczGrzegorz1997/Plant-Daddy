import React from 'react';
import { Link } from 'react-router-dom';

export default function HomePage() {
  return (
    <div className='homepage'>
      <div className='homepage-navbar'>
        <Link to='/'>
          <button className={'homepage-button clicked'}>Overview</button>
        </Link>
        <Link to='/login'>
          <button className='homepage-button'>Login</button>
        </Link>
        <Link to='/signup'>
          <button className='homepage-button'>Signup</button>
        </Link>
      </div>
      <img src='/brand2.png' className='brand-image' alt='brand2.png' />
      <div className='text-container'>
        <p>Who are we?</p>
        <p>
          "Welcome to Plant Daddy, the ultimate green haven for plant lovers!
          🌿🌸 Plant Daddy is your go-to social media app for showcasing your
          real-life plant collection in all its verdant glory. Whether you're a
          succulent connoisseur, a tropical paradise curator, or a proud parent
          to a flourishing indoor jungle, Plant Daddy is your digital sanctuary.
          With Plant Daddy, you can effortlessly add your beloved plants to your
          virtual collection. Snap photos, give them unique names, and even add
          personalized icons to capture the essence of each green companion. But
          that's not all! Our thriving community of plant enthusiasts is here to
          celebrate your botanical achievements. Connect with fellow green
          thumbs, share gardening tips, and explore the diverse flora of Plant
          Daddy. 🌼🌱 Experience the joy of swapping plant stories, marveling at
          stunning foliage, and getting inspired to expand your own garden. In
          Plant Daddy, your love for plants knows no bounds. Join us in
          cultivating a digital garden of friendship and inspiration. Let your
          plant passion bloom on Plant Daddy!" 🌿🌻
        </p>
      </div>
    </div>
  );
}
const apis = {
  'plant-api': {
    apiUrl: 'https://perenual.com',
  },
};
