import React from 'react';
import { useEffect, useRef } from 'react';

import { apis } from '../api-services/api-access.js';
const uploadPreset = apis.cloudinary.uploadPreset;
const apiKey = apis.cloudinary.apiKey;

export default function UploadWidgetContainer({ onImageUpload }) {
  const cloudinaryRef = useRef();
  const widgetRef = useRef();

  const imageArr = [];

  useEffect(() => {
    cloudinaryRef.current = window.cloudinary;
    widgetRef.current = cloudinaryRef.current.createUploadWidget(
      {
        cloudName: 'dnzhttyev',
        uploadPreset: uploadPreset,
        apiKey: apiKey,
        folder: 'plants',
        multiple: true,
      },
      function (error, result) {
        if (!error && result && result.event === 'success') {
          const imageUrl = result.info.secure_url;

          document.getElementById('uploadedImageUrl').value = imageUrl;

          imageArr.push(imageUrl);

          onImageUpload(imageArr);
        }
      }
    );
  }, [onImageUpload]);

  const handleUploadClick = (e) => {
    e.preventDefault();
    widgetRef.current.open();
  };

  return (
    <button onClick={handleUploadClick} className='widgetUpload'>
      <img src='/add-img-icon.png' alt='buttonpng' border='0' />
    </button>
  );
}
