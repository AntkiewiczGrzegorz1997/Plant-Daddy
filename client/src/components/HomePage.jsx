import React from 'react';
import { Link } from 'react-router-dom';

export default function HomePage() {
  return (
    <div>
      <div className='gradient rounded-b-2xl h-screen flex flex-col'>
        <div className='flex flex-row justify-center pt-2'>
          <Link to='/'>
            <button
              className={
                'homepage-button clicked bg-inherit border-none outline-none m-5 cursor-pointer'
              }
            >
              Overview
            </button>
          </Link>
          <Link to='/login'>
            <button className='homepage-button bg-inherit border-none outline-none m-5 cursor-pointer'>
              Login
            </button>
          </Link>
          <Link to='/signup'>
            <button className='homepage-button bg-inherit border-none outline-none m-5 cursor-pointer'>
              Signup
            </button>
          </Link>
        </div>
        <div className='relative mx-auto inline-block z-10 scale-50'>
          <img
            alt='id'
            src='/Pasted-Graphic-1.svg'
            id='plantimg'
            className='mx-auto z-0'
          />
          <div className='absolute top-1/2 left-1/2 transform -translate-x-1/2 translate-y-[calc(-50%+18px)] w-[calc(98%)] h-[calc(104%)] border-brand shadow-[0px_0px_24px_8px_rgba(148,_140,_249,_0.4)] rounded-full -z-10  '></div>

          <div className='absolute w-96 h-96 bg-white rounded-full -bottom-6 left-1/2 transform -translate-x-1/2 -z-10'></div>
        </div>

        <p className='text-justify text-8xl font-bold mx-auto mt-6'>
          PLANT DADDY
        </p>
      </div>
      <div className='bottomhomepage mx-auto my-20 max-w-lg flex flex-col overflow-hidden rounded-2xl border sm:rounded-3xl  border-brand shadow-[0px_0px_24px_8px_rgba(148,_140,_249,_0.4)]'>
        <p className='px-6 pt-4 text-center text-lg font-bold'>WHO ARE WE?</p>
        <p className='px-6 pb-4 text-justify text-base'>
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
