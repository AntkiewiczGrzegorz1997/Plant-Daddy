import React from 'react';
import Header from './Header';
import PlantContainer from './PlantContainer';

export default function ProfilePage() {
  return (
    <div>
      <Header className='h-1/6' />
      <PlantContainer className='h-5/6' />
    </div>
  );
}
