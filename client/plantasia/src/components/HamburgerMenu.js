import React from 'react';
import { Link } from 'react-router-dom';

export default function HamburgerMenu({ menuOpen, onClose, pageName }) {
  return (
    <div className='overlay'>
      <button className='close-button' onClick={onClose}>
        Close
      </button>

      <nav className='navbar'>
        {pageName === 'profile' && (
          <Link to='/profile/addnewplant' className='navbar-button'>
            Add a Plant
          </Link>
        )}
        {pageName === 'addnewplant' && (
          <Link to='/profile' className='navbar-button'>
            Go Back
          </Link>
        )}

        <div className='navbar-button'>User Stats</div>
        <Link to='/logout' className='navbar-button'>
          Logout
        </Link>
      </nav>
    </div>
  );
}
