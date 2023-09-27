import React, { useState } from 'react';
import { styles } from '../data/styles';

import auth from '../utils/auth';
import apiServiceJWT from './../ApiServiceJWT';
import { useNavigate } from 'react-router-dom';
import { Link } from 'react-router-dom';

import TextField from '@mui/material/TextField';

import Button from '@mui/material/Button';

const initialState = {
  email: '',
  password: '',
  firstName: '',
  lastName: '',
  username: '',
};

export default function Registration(props) {
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
    // Check the client-session to see how to handle redirects
    // REMOVE-START
    e.preventDefault();
    const { email, password, firstName, lastName, username } = state;
    const user = {
      email,
      password,
      firstName,
      lastName,
      user_id: Math.floor(Math.random() * 9000000000) + 1000000000,
      username,
    };
    const res = await apiServiceJWT.register(user);

    if (res.error) {
      alert(`${res.message}`);
      setState(initialState);
    } else {
      const { accessToken } = res;
      localStorage.setItem('accessToken', accessToken);
      props.setIsAuthenticated(true);
      auth.login(() => navigate('/profile'));
    }
  };
  const validateForm = () => {
    return (
      !state.email || !state.password || !state.firstName || !state.lastName
    );
  };

  return (
    <div className='regipage'>
      <div className='homepage-navbar'>
        <Link to='/'>
          <button className={'homepage-button'}>Overview</button>
        </Link>
        <Link to='/login'>
          <button className='homepage-button'>Login</button>
        </Link>
        <Link to='/signup'>
          <button className='homepage-button clicked'>Signup</button>
        </Link>
      </div>
      <div className='form-container-signup'>
        <div className='form-regi-title'>
          <h1>Sign up</h1>
          <p>It's quick and easy</p>
        </div>
        <form className={'form-signup'} onSubmit={handleSubmit}>
          <TextField
            sx={styles.style4}
            type='text'
            placeholder='name@mail.com'
            name='email'
            value={state.email}
            onChange={handleChange}
          />
          <TextField
            sx={styles.style5}
            type='password'
            placeholder='password'
            name='password'
            value={state.password}
            onChange={handleChange}
          />
          <TextField
            sx={styles.style5}
            type='text'
            placeholder='Name'
            name='firstName'
            value={state.firstName}
            onChange={handleChange}
          />
          <TextField
            sx={styles.style5}
            type='text'
            placeholder='Surname'
            name='lastName'
            value={state.lastName}
            onChange={handleChange}
          />

          <TextField
            sx={styles.style5}
            type='text'
            placeholder='username'
            name='username'
            value={state.username}
            onChange={handleChange}
          />

          <Button
            className='form-submit'
            type='submit'
            disabled={validateForm()}
            sx={styles.style6}
          >
            Sign up
          </Button>
        </form>
      </div>
    </div>
  );
}
