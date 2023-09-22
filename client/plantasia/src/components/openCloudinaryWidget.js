import React from 'react';

import cloudinary from 'cloudinary-core';

const cloudinaryCore = new cloudinary.Cloudinary({
  cloud_name: 'your_cloud_name',
});

// Inside your component
export default function openCloudinaryWidget() {
  cloudinaryCore.openUploadWidget(
    {
      cloudName: 'dnzhttyev',
      uploadPreset: 'bspqor5d',
      apiKey: '733433717337262',
      folder: 'plants',
      tags: ['plant', 'image'], // Optional tags for organizing your images
    },
    (error, result) => {
      if (!error && result && result.event === 'success') {
        // Handle the uploaded image URL here
        const imageUrl = result.info.secure_url;
        console.log('Uploaded Image URL:', imageUrl);

        // You can store the imageURL in your component state or use it as needed.
      }
    }
  );
}
