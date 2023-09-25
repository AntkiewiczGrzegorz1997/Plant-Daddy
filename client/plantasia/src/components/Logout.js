import React from 'react';
import auth from '../utils/auth';
import apiServiceJWT from './../ApiServiceJWT';
import { Link } from 'react-router-dom';
import { useNavigate } from 'react-router-dom';

const Logout = (props) => {
  let navigate = useNavigate();

  const handleClick = () => {
    removeToken();
    handleAuth();
  };

  const removeToken = () => {
    apiServiceJWT.logout('accessToken');
  };

  const handleAuth = () => {
    props.setIsAuthenticated(false);
    auth.logout(() => navigate('/'));
  };

  const handleNoClick = () => {
    // Go back to the previous page using the browser's history
    window.history.back();
  };

  return (
    <section className='Logout'>
      <p>Are you sure you want to log out?</p>

      <div>
        <button className='confirm-btn' onClick={handleNoClick}>
          No
        </button>

        <Link to='/'>
          <button className='confirm-btn' onClick={handleClick}>
            Yes
          </button>
        </Link>
      </div>
    </section>
  );
};

export default Logout;
