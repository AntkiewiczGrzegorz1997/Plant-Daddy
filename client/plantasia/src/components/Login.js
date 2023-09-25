import React, { useState } from 'react';
import auth from '../utils/auth';
import apiServiceJWT from './../ApiServiceJWT';
import { useNavigate } from 'react-router-dom';
import { Link } from 'react-router-dom';
import video from '../video.mp4';

import TextField from '@mui/material/TextField';

import Button from '@mui/material/Button';

const initialState = {
  email: '',
  password: '',
};

export default function Login(props) {
  let navigate = useNavigate();
  const [state, setState] = useState(initialState);

  const handleChange = (e) => {
    const { name, value } = e.target;
    setState((prevState) => ({
      ...prevState,
      [name]: value,
    }));
  };

  const handleSubmit = async (e) => {
    // Check the session branch to see how to handle redirects
    // REMOVE-START
    e.preventDefault();
    const { email, password } = state;
    const user = { email, password };
    const res = await apiServiceJWT.login(user);

    if (res.error) {
      alert(`${res.message}`);
      setState(initialState);
    } else {
      const { accessToken } = res;
      localStorage.setItem('accessToken', accessToken);

      props.setIsAuthenticated(true);
      auth.login(() => navigate('/profile'));
    }
    // REMOVE-END
  };

  const validateForm = () => {
    return !state.email || !state.password;
  };

  return (
    <div className='loginpage'>
      <div className='homepage-navbar'>
        <Link to='/'>
          <button className={'homepage-button'}>Overview</button>
        </Link>
        <Link to='/login'>
          <button className='homepage-button clicked'>Login</button>
        </Link>
        <Link to='/signup'>
          <button className='homepage-button'>Signup</button>
        </Link>
      </div>

      <div className='login-content'>
        <div className='video-container'>
          <video width='640' height='358' autoPlay loop>
            <source src={video} type='video/mp4' alt='video' />
            Your browser does not support the video tag.
          </video>
        </div>
        <form className='form-login' onSubmit={handleSubmit}>
          <TextField
            sx={{
              width: '25vw',
              borderRadius: '4px',

              borderLeftColor: '#FFFFFF',
              backgroundColor: 'transparent',
              color: 'white',
              '& input': {
                color: 'white',
                backgroundColor: 'transparent',
              },
              '& .MuiInputBase-input': {
                color: 'white', // Set text color to white
              },
              '& .MuiOutlinedInput-notchedOutline': {
                borderColor: '#FFFFFF !important', // Set border color to white with !important
              },
              '& .MuiOutlinedInput-root:hover .MuiOutlinedInput-notchedOutline':
                {
                  borderColor: '#FFFFFF !important', // Set border color to white with !important on hover
                },
            }}
            type='text'
            placeholder='name@mail.com'
            name='email'
            value={state.email}
            onChange={handleChange}
          />

          <TextField
            sx={{
              borderRadius: '4px',
              backgroundColor: 'transparent',
              color: '#776472',
              width: '25vw',
              marginTop: '5vh',
              marginBottom: '5vh',
              '& input': {
                color: 'white',
              },
              '& .MuiInputBase-input': {
                color: 'white', // Set text color to white
              },
              '& .MuiOutlinedInput-notchedOutline': {
                borderColor: '#FFFFFF !important', // Set border color to white with !important
              },
              '& .MuiOutlinedInput-root:hover .MuiOutlinedInput-notchedOutline':
                {
                  borderColor: '#FFFFFF !important', // Set border color to white with !important on hover
                },
            }}
            type='password'
            placeholder='supersecretthingy'
            name='password'
            value={state.password}
            onChange={handleChange}
          />

          <Button
            className={'form-submit login'}
            type='submit'
            disabled={validateForm()}
            sx={{
              backgroundColor: '#445552',
              width: '25vw',
              color: '#FFFFFF',
              height: '7vh',
              '&:hover': {
                backgroundColor: '#294d4a', // Change to the desired background color
              },
            }}
            name='icon'
          >
            Log in
          </Button>
        </form>
      </div>
    </div>
  );
}
