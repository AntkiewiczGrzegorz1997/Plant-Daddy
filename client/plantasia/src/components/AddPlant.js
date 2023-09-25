import React, { useState, useEffect, useRef } from 'react';
import AddPlantHeader from './AddPlantHeader';
import Button from '@mui/material/Button';
import UploadWidgetContainer from './UploadWidgetContainer';
import apiServiceJWT from '../ApiServiceJWT';
import { getPlantInfo } from '../apiService';
import CalendarTodayIcon from '@mui/icons-material/CalendarToday'; // Import the calendar icon

import {
  getAllPlantNames,
  getPlantDescription,
  addPlant,
  addUploadedImages,
} from '../apiService';

import TextField from '@mui/material/TextField';
import Autocomplete from '@mui/material/Autocomplete';

export default function AddPlant() {
  const [isImagePopupOpen, setImagePopupOpen] = useState(false);
  const [selectedImageUrl, setSelectedImageUrl] = useState([]);

  const [names, setNames] = useState([]); // Use state to store the names
  const [uploadedCloudinaryImage, setUploadedCloudinaryImage] = useState([]);
  const sizeAutocompleteRef = useRef();
  const speciesAutocompleteRef = useRef();

  const handleImageUpload = (imageUrl) => {
    console.log(imageUrl);
    setUploadedCloudinaryImage([...uploadedCloudinaryImage, ...imageUrl]);
  };

  useEffect(() => {
    // Simulate fetching all names from the database
    const fetchAllNames = async () => {
      console.log('here1');
      const fetchedNames = await getAllPlantNames();
      console.log('here2');
      setNames(fetchedNames.map((name) => ({ label: name.full_name }))); // Convert names to the required format
    };

    fetchAllNames();
  }, []);

  const openImagePopup = (e) => {
    e.preventDefault(); // Prevent form submission
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
    setImagePopupOpen(false); // Close the popup after selecting an image
  };

  async function handleSubmit(event) {
    event.preventDefault();

    //potential to shorten it with join operation. Do when you have more time
    const plant = {};

    plant.full_name = event.target.elements.fullName.value;
    const plantInfo = await getPlantInfo(plant.full_name);
    plant.user_ID = 1;
    plant.plant_ID = Math.floor(Math.random() * 9000000000) + 1000000000;
    plant.ID = plantInfo.id;
    plant.plant_name = event.target.elements.name.value;
    plant.scientific_name = plantInfo.scientific_name;

    plant.plant_description = await getPlantDescription(plantInfo.id);

    plant.plant_size = event.target.elements.size.value;
    plant.age = event.target.elements.date.value;
    plant.watering = plantInfo.watering;
    plant.sunlight = plantInfo.sunlight;
    plant.icon_ID = selectedImageUrl;
    plant.image_url = plantInfo.image_url;

    await addPlant(plant, localStorage.accessToken);

    const uploadedImg = {};

    uploadedImg.user_ID = plant.user_ID;
    uploadedImg.plant_ID = plant.plant_ID;
    uploadedImg.image_url = JSON.stringify(uploadedCloudinaryImage);

    await addUploadedImages(uploadedImg);
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

  const iconImages = [
    { src: '/cactus.png', alt: 'Cactus' },
    { src: '/monstera.png', alt: 'Monstera' },
    { src: '/plant 1.png', alt: 'Plant 1' },
    { src: '/plant 9.png', alt: 'Plant 9' },
  ];

  const sizes = [
    { label: 'tiny' },
    { label: 'small' },
    { label: 'medium' },
    { label: 'medium large' },
    { label: 'XXL' },
  ];

  return (
    <div className='AddPlant'>
      <AddPlantHeader />
      <form className='plant-upload-form' onSubmit={handleSubmit}>
        <p>Add a Plant</p>

        <UploadWidgetContainer
          className='UploadWidgetContainer'
          onImageUpload={handleImageUpload}
        />
        {uploadedCloudinaryImage.length > 0 && (
          <div className='image-scroll'>
            {/* Display the uploaded image */}
            {uploadedCloudinaryImage.map(
              (image) => (
                <div key={image} className='image-container'>
                  {console.log(image)}
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
          <div className='form-first-column'>
            <div>
              {/* ... other form fields */}
              <TextField
                sx={{
                  width: '100%',
                  borderRadius: '4px',
                  backgroundColor: '#776472',
                  '& input': {
                    color: 'white',
                  },
                  '& .MuiInputBase-input': {
                    color: 'white',
                  },
                  '& .MuiOutlinedInput-notchedOutline': {
                    borderColor: '#FFFFFF !important',
                  },
                  '& .MuiInputLabel-root': {
                    color: 'white',
                  },
                  '& .MuiOutlinedInput-root:hover .MuiOutlinedInput-notchedOutline':
                    {
                      borderColor: '#FFFFFF !important',
                    },
                  '& .MuiIconButton-root': {
                    color: 'white !important', // Change the calendar icon color to white
                  },
                  '& .MuiIconButton-root svg': {
                    fill: 'white',
                    color: 'white',
                  },
                  '& svg': { color: 'white' },
                }}
                className='test'
                label='Name'
                name='name'
              />
            </div>
            <div>
              <TextField
                sx={{
                  width: '100%',
                  borderRadius: '4px',
                  backgroundColor: '#776472',
                  '& input': {
                    color: 'white',
                  },
                  '& .MuiInputBase-input': {
                    color: 'white',
                  },
                  '& .MuiOutlinedInput-notchedOutline': {
                    borderColor: '#FFFFFF !important',
                  },
                  '& .MuiInputLabel-root': {
                    color: 'white',
                  },
                  '& .MuiOutlinedInput-root:hover .MuiOutlinedInput-notchedOutline':
                    {
                      borderColor: '#FFFFFF !important',
                    },
                  '& .MuiIconButton-root': {
                    color: 'white !important', // Change the calendar icon color to white
                  },
                  '& .MuiIconButton-root svg': {
                    fill: 'white',
                    color: 'white',
                  },
                  '& svg': { color: 'white' }, // Change the color of the calendar icon
                }}
                id='date'
                type='month'
                label='Since When'
                name='date'
                InputLabelProps={{
                  shrink: true,
                }}
              />
            </div>

            <div>
              <Button
                onClick={openImagePopup}
                variant='contained'
                sx={{ backgroundColor: '#445552' }}
                name='icon'
              >
                Choose plant icon
              </Button>
            </div>

            <div>
              <Button
                type='submit'
                variant='contained'
                sx={{ backgroundColor: '#294d4a' }}
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
          <div className='form-second-column'>
            <div>
              <Autocomplete
                ref={speciesAutocompleteRef}
                ListboxProps={{
                  sx: {
                    backgroundColor: '#445552',

                    // Add more styles as needed
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
                    sx={{
                      width: '100%',
                      borderRadius: '4px',
                      backgroundColor: '#776472',
                      '& input': {
                        color: 'white',
                      },
                      '& .MuiInputBase-input': {
                        color: 'white',
                      },
                      '& .MuiOutlinedInput-notchedOutline': {
                        borderColor: '#FFFFFF !important',
                      },
                      '& .MuiInputLabel-root': {
                        color: 'white',
                      },
                      '& .MuiOutlinedInput-root:hover .MuiOutlinedInput-notchedOutline':
                        {
                          borderColor: '#FFFFFF !important',
                        },
                    }}
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
                    backgroundColor: '#445552',
                    // Add more styles as needed
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
                    sx={{
                      width: '100%',
                      borderRadius: '4px',
                      backgroundColor: '#776472',
                      '& input': {
                        color: 'white',
                      },
                      '& .MuiInputBase-input': {
                        color: 'white',
                      },
                      '& .MuiOutlinedInput-notchedOutline': {
                        borderColor: '#FFFFFF !important',
                      },
                      '& .MuiInputLabel-root': {
                        color: 'white',
                      },
                      '& .MuiOutlinedInput-root:hover .MuiOutlinedInput-notchedOutline':
                        {
                          borderColor: '#FFFFFF !important',
                        },
                    }}
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
