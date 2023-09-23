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
          <Link to='/profile/addnewplant' className='link-component'>
            Add Plant
          </Link>
        )}
        {pageName === 'addnewplant' && (
          <Link to='/profile' className='link-component'>
            Go Back
          </Link>
        )}

        <div>User Stats</div>
        <div>Log out</div>
        {/* Add more menu options as needed */}
      </nav>
    </div>
  );
}
