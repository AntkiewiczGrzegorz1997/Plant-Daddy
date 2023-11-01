import React, { useState } from 'react';
import auth from '../utils/auth';
import apiServiceJWT from '../api-services/ApiServiceJWT';
import { useNavigate } from 'react-router-dom';
import { Link } from 'react-router-dom';
import { styles } from '../data/styles';
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
  };

  const validateForm = () => {
    return !state.email || !state.password;
  };

  return (
    <div>
      <div className='flex flex-row justify-center mt-2'>
        <Link to='/'>
          <button
            className={
              'homepage-button bg-inherit border-none outline-none m-5 cursor-pointer'
            }
          >
            Overview
          </button>
        </Link>
        <Link to='/login'>
          <button
            className={
              'homepage-button clicked bg-inherit border-none outline-none m-5 cursor-pointer'
            }
          >
            Login
          </button>
        </Link>
        <Link to='/signup'>
          <button
            className={
              'homepage-button bg-inherit border-none outline-none m-5 cursor-pointer'
            }
          >
            Signup
          </button>
        </Link>
      </div>

      <div className='mx-auto mt-40 max-w-lg flex flex-col overflow-hidden rounded-2xl border sm:rounded-3xl  border-brand shadow-[0px_0px_24px_8px_rgba(148,_140,_249,_0.4)]'>
        <form className='form-login' onSubmit={handleSubmit}>
          <TextField
            sx={styles.style1}
            type='text'
            placeholder='name@mail.com'
            name='email'
            value={state.email}
            onChange={handleChange}
          />

          <TextField
            sx={styles.style2}
            type='password'
            placeholder='supersecretthingy'
            name='password'
            value={state.password}
            onChange={handleChange}
          />

          <Button
            type='submit'
            disabled={validateForm()}
            sx={styles.style3}
            name='icon'
          >
            Log in
          </Button>
        </form>
      </div>
    </div>
  );
}
