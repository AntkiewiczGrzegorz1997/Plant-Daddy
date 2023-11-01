import React, { useState, useEffect, useRef } from 'react';
import HamburgerMenu from './HamburgerMenu';
import apiServiceJWT from '../api-services/ApiServiceJWT';
import { getAllUsernames } from '../api-services/apiService';
import Hamburger from './Hamburger';

export default function Header() {
  const [menuOpen, setMenuOpen] = useState(false);
  const [username, setUsername] = useState('');
  const [usernames, setUsernames] = useState([]);
  const [inputValue, setInputValue] = useState('');
  const [suggestions, setSuggestions] = useState([]);
  const ulRef = useRef(null);

  useEffect(() => {
    const fetchUsername = async () => {
      const fetchedUsername = await apiServiceJWT.username(
        localStorage.accessToken
      );

      setUsername(fetchedUsername.rows[0].username);
    };
    fetchUsername();
    const fetchUsernames = async () => {
      let fetchedUsernames = await getAllUsernames();
      fetchedUsernames = fetchedUsernames.map((username) => {
        return username.username;
      });
      console.log(fetchedUsernames);
      setUsernames(fetchedUsernames);
    };
    fetchUsernames();
  }, []);

  const toggleMenu = () => {
    setMenuOpen(!menuOpen);
  };

  const autoComplete = (inputValue) => {
    return usernames.filter((value) =>
      value.toLowerCase().includes(inputValue.toLowerCase())
    );
  };

  const changeAutoComplete = (e) => {
    const data = e.target.value;
    setInputValue(data);
    if (data.length) {
      let autoCompleteValues = autoComplete(data);
      setSuggestions(autoCompleteValues);
    } else {
      setSuggestions([]);
    }
  };

  const selectItem = (value) => {
    setInputValue(value);
    setSuggestions([]);
  };

  return (
    <div className='flex justify-between '>
      <div className='font-bold text-3xl m-5'>{username}</div>
      <div class='relative my-auto ml-96'>
        <input
          type='text'
          id='searchBox'
          placeholder='Search Users'
          class='pl-3 pr-10 py-2 border border border-white rounded-md w-64 focus:outline-none'
          value={inputValue}
          onChange={changeAutoComplete}
        />
        <ul
          ref={ulRef}
          className='absolute top-0 left-0 mt-10 w-64 bg-white border border-gray-300 rounded-md shadow-md darkbackground'
        >
          {suggestions.map((value) => (
            <li
              key={value}
              className='p-2 cursor-pointer hover:bg-gray-200 darkbackground'
              onClick={() => selectItem(value)}
            >
              {value}
            </li>
          ))}
        </ul>
        <div
          className='absolute top-1/2 right-3 transform -translate-y-1/2 cursor-pointer'
          onClick={() => console.log('Search button clicked!')}
        >
          &#128269;
        </div>
      </div>
      <div className='hamburger'>
        <div onClick={toggleMenu}>{!menuOpen && <Hamburger />}</div>
      </div>
      {menuOpen && <HamburgerMenu onClose={toggleMenu} pageName={'profile'} />}
    </div>
  );
}
