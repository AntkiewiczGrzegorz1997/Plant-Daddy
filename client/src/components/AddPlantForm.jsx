import React, { useState, useEffect, useRef } from 'react';
import AddPlantHeader from './AddPlantHeader';
import Button from '@mui/material/Button';
import UploadWidgetContainer from './UploadWidgetContainer';
import apiServiceJWT from '../api-services/ApiServiceJWT';
import { getPlantInfo } from '../api-services/apiService';
import { objects } from '../data/objects';
import { styles } from '../data/styles';

import {
  getAllPlantNames,
  getPlantDescription,
  addPlant,
} from '../api-services/apiService';

import TextField from '@mui/material/TextField';
import Autocomplete from '@mui/material/Autocomplete';

export default function AddPlantForm() {
  const [isImagePopupOpen, setImagePopupOpen] = useState(false);
  const [selectedImageUrl, setSelectedImageUrl] = useState([]);

  const [names, setNames] = useState([]);
  const [uploadedCloudinaryImage, setUploadedCloudinaryImage] = useState([]);
  const sizeAutocompleteRef = useRef();
  const speciesAutocompleteRef = useRef();

  const handleImageUpload = (imageUrl) => {
    setUploadedCloudinaryImage([...uploadedCloudinaryImage, ...imageUrl]);
  };

  useEffect(() => {
    const fetchAllNames = async () => {
      const fetchedNames = await getAllPlantNames();
      setNames(fetchedNames.map((name) => ({ label: name.full_name })));
    };

    fetchAllNames();
  }, []);

  const openImagePopup = (e) => {
    e.preventDefault();
    setImagePopupOpen(true);
  };

  const handleDeleteImage = (imageUrl) => {
    const updatedImages = uploadedCloudinaryImage.filter(
      (image) => image !== imageUrl
    );
    setUploadedCloudinaryImage(updatedImages);
  };

  const selectImage = (imageUrl) => {
    setSelectedImageUrl(imageUrl);
    setImagePopupOpen(false);
  };

  async function handleSubmit(event) {
    event.preventDefault();

    const name = event.target.elements.name.value;
    const date = event.target.elements.date.value;
    const fullName = event.target.elements.fullName.value;
    const size = event.target.elements.size.value;

    if (!name || !date || !fullName || !size) {
      alert('Please fill out all text input fields.');
      return;
    }

    const plantInfo = await getPlantInfo(fullName);

    const plant = {
      full_name: fullName,
      user_ID: 1,
      plant_ID: Math.floor(Math.random() * 9000000000) + 1000000000,
      ID: plantInfo.id,
      plant_name: name,
      scientific_name: plantInfo.scientific_name,
      plant_description: await getPlantDescription(plantInfo.id),
      plant_size: size,
      age: date,
      watering: plantInfo.watering,
      sunlight: plantInfo.sunlight,
      icon_ID: selectedImageUrl,
      image_url: plantInfo.image_url,
    };

    await addPlant(plant, localStorage.accessToken);

    const uploadedImg = {};

    uploadedImg.user_ID = plant.user_ID;
    uploadedImg.plant_ID = plant.plant_ID;
    uploadedImg.image_url = JSON.stringify(uploadedCloudinaryImage);

    await apiServiceJWT.addUploadedImages(
      localStorage.accessToken,
      uploadedImg
    );
    setUploadedCloudinaryImage([]);
    event.target.reset();
    setSelectedImageUrl('');
    sizeAutocompleteRef.current
      .querySelector('button[aria-label="Clear"]')
      .click();
    speciesAutocompleteRef.current
      .querySelector('button[aria-label="Clear"]')
      .click();
  }

  const iconImages = objects.iconImages;
  const sizes = objects.sizes;

  return (
    <div className='h-screen w-screen flex flex-col items-center gradient'>
      <AddPlantHeader className='flex flex-row justify-between' />
      <form
        className='mx-auto w-3/5 h-4/5 mt-8 flex flex-col overflow-hidden rounded-5xl border sm:rounded-3xl darkbackground 
  border-brand items-center'
        onSubmit={handleSubmit}
      >
        <p className='mt-8'>ADD A PLANT</p>

        <UploadWidgetContainer
          className='mx-auto'
          onImageUpload={handleImageUpload}
        />
        {uploadedCloudinaryImage.length > 0 && (
          <div className='image-scroll'>
            {uploadedCloudinaryImage.map(
              (image) => (
                <div key={image} className='image-container'>
                  <img className='chosenImg' src={image} alt='Uploaded' />
                  <button
                    className='delete-button'
                    onClick={() => handleDeleteImage(image)}
                  >
                    Delete
                  </button>
                </div>
              )

              //
            )}
          </div>
        )}

        <div className='form-wrapper'>
          <div className='form-first-column pr-12 mt-4'>
            <div>
              <TextField
                sx={styles.style1}
                className='test'
                label='Name'
                name='name'
              />
            </div>
            <div>
              <TextField
                sx={styles.style1}
                id='date'
                type='month'
                label='Since When'
                name='date'
                InputLabelProps={{
                  shrink: true,
                }}
                inputProps={{
                  className: 'custom-date-icon',
                }}
              />
            </div>

            <div>
              <Button
                onClick={openImagePopup}
                variant='contained'
                sx={{
                  backgroundColor: '#363563',
                  marginLeft: '-1.5vw',
                  width: '20vw',
                }}
                name='icon'
              >
                Choose plant icon
              </Button>
            </div>
            <div>
              <Button
                type='submit'
                variant='contained'
                sx={{
                  backgroundColor: '#948cf9',
                  marginLeft: '-1.5vw',
                  width: '20vw',
                }}
              >
                Create
              </Button>
            </div>

            <input
              type='hidden'
              id='uploadedImageUrl'
              name='uploadedImageUrl'
              value=''
            />
          </div>
          <div className='form-second-column pl-12 mr-6 mt-4'>
            <div>
              <Autocomplete
                ref={speciesAutocompleteRef}
                ListboxProps={{
                  sx: {
                    backgroundColor: '#363563',
                  },
                }}
                className='Autocomplete'
                disablePortal
                id='combo-box-demo'
                options={names}
                sx={{
                  width: '100%',
                  borderRadius: '4px',
                  backgroundColor: '#dde0bd',
                }}
                renderInput={(params) => (
                  <TextField
                    sx={styles.style1}
                    className='test'
                    {...params}
                    label='Species'
                    name='fullName'
                  />
                )}
              />
            </div>
            <div>
              <Autocomplete
                ref={sizeAutocompleteRef}
                ListboxProps={{
                  sx: {
                    backgroundColor: '#363563',
                  },
                }}
                className='Autocomplete'
                disablePortal
                id='combo-box-demo'
                options={sizes}
                sx={{
                  width: '300',
                  borderRadius: '4px',
                  backgroundColor: '#dde0bd',
                  borderColor: '#675044',
                }}
                key='10'
                renderInput={(params) => (
                  <TextField
                    sx={styles.style1}
                    className='test'
                    {...params}
                    label='Size'
                    name='size'
                  />
                )}
              />
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

            {selectedImageUrl.length > 0 && (
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
