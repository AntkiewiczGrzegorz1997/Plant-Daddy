import React from 'react';

import { useEffect, useRef } from 'react';

export default function UploadWidgetContainer() {
  const cloudinaryRef = useRef();
  const widgetRef = useRef();

  useEffect(() => {
    cloudinaryRef.current = window.cloudinary;
    widgetRef.current = cloudinaryRef.current.createUploadWidget(
      {
        cloudName: 'dnzhttyev',
        uploadPreset: 'bspqor5d',
        apiKey: '733433717337262',
        folder: 'plants', // Add your Cloudinary API key here
      },
      function (error, result) {
        if (!error && result && result.event === 'success') {
          // Handle the successful upload here
          const imageUrl = result.info.secure_url;

          // Set the URL in the hidden input field
          document.getElementById('uploadedImageUrl').value = imageUrl;

          console.log(imageUrl); // You can log the URL if needed
        }
      }
    );
  }, []);

  const handleUploadClick = (e) => {
    e.preventDefault(); // Prevent form submission
    widgetRef.current.open(); // Open the Cloudinary Upload Widget
  };

  return (
    <button onClick={handleUploadClick}>
      <img src='/add_photo_alternate_outlined.svg' alt='buttonpng' border='0' />
    </button>
  );
}
