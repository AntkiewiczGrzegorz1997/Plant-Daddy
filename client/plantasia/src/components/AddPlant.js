import React, { useState, useEffect } from 'react';
import AddPlantHeader from './AddPlantHeader';
import UploadWidgetContainer from './UploadWidgetContainer';
import AutocompleteInput from './AutocompleteInput';
import { getAllPlantNames } from '../apiService';

import TextField from '@mui/material/TextField';
import Autocomplete from '@mui/material/Autocomplete';

export default function AddPlant() {
  const [isImagePopupOpen, setImagePopupOpen] = useState(false);
  const [selectedImageUrl, setSelectedImageUrl] = useState('');
  let names = [];

  useEffect(() => {
    // Simulate fetching all names from the database
    const fetchAllNames = async () => {
      names = await getAllPlantNames();
      // names.forEach((elem) => {
      //   namesArr.push(elem.full_name);
      // });
    };

    fetchAllNames();
  }, []);

  const openImagePopup = (e) => {
    e.preventDefault(); // Prevent form submission
    setImagePopupOpen(true);
  };

  const selectImage = (imageUrl) => {
    setSelectedImageUrl(imageUrl);
    setImagePopupOpen(false); // Close the popup after selecting an image
  };

  const iconImages = [
    { src: '/cactus.png', alt: 'Cactus' },
    { src: '/monstera.png', alt: 'Monstera' },
    { src: '/plant 1.png', alt: 'Plant 1' },
    { src: '/plant 9.png', alt: 'Plant 9' },
  ];

  return (
    <div className='AddPlant'>
      <AddPlantHeader className='AddPlantHeader' />
      <form className='plant-upload-form'>
        <h1>Add a new plant</h1>
        <UploadWidgetContainer />

        <div className='form-wrapper'>
          <div className='form-first-column'>
            {/* ... other form fields */}
            <div>
              <p className='formtext'>NAME</p>
              <input
                type='text'
                placeholder='Insert plant name...'
                name='userTopic'
              ></input>
            </div>
            <div>
              <p className='formtext'>SINCE WHEN</p>

              <input type='month' placeholder='Date...' name='date'></input>
            </div>
            <div>
              <p className='formtext'>CHOOSE ICON</p>
              <input
                type='text'
                placeholder='Insert a venue...'
                name='userVenue'
              ></input>
            </div>
            <div>
              <button type='submit'> Create </button>
            </div>
            <input
              type='hidden'
              id='uploadedImageUrl'
              name='uploadedImageUrl'
              value=''
            />
          </div>
          <div className='form-second-column'>
            <div>
              <p className='formtext'>SIZE</p>
              <input
                type='text'
                placeholder='Insert plant name...'
                name='userTopic'
              ></input>
            </div>

            <AutocompleteInput />

            <Autocomplete
              disablePortal
              id='combo-box-demo'
              options={names}
              sx={{ width: 300 }}
              renderInput={(params) => <TextField {...params} label='Movie' />}
            />

            <div>
              <p className='formtext'>SPECIES</p>
              <input
                type='text'
                placeholder='Insert plant name...'
                name='userTopic'
              ></input>
              <button onClick={openImagePopup}>Choose Image</button>
            </div>

            {isImagePopupOpen && (
              <div className='image-popup'>
                {iconImages.map((image, index) => (
                  <div
                    key={index}
                    className='image'
                    onClick={() => selectImage(image.src)}
                  >
                    <img
                      className='plant-icon'
                      src={image.src}
                      alt={image.alt}
                    />
                  </div>
                ))}
              </div>
            )}

            {selectedImageUrl && (
              <div className='selected-image'>
                <img src={selectedImageUrl} alt='Selected' />
              </div>
            )}
          </div>
        </div>
      </form>
    </div>
  );
}
