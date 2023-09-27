import React, { useState, useEffect } from 'react';
import { getAllPlantNames } from '../apiService';
export default function AutocompleteInput() {
  const [inputValue, setInputValue] = useState('');
  const [allNames, setAllNames] = useState([]);
  const [filteredNames, setFilteredNames] = useState([]);

  const fetchAllNames = async () => {
    const namesArr = [];
    const names = await getAllPlantNames();
    names.forEach((elem) => {
      namesArr.push(elem.full_name);
    });

    setAllNames(namesArr);
  };

  useEffect(() => {
    fetchAllNames();
  }, []);

  useEffect(() => {
    const filtered = allNames.filter((name) =>
      name.toLowerCase().includes(inputValue.toLowerCase())
    );
    setFilteredNames(filtered);
  }, [inputValue, allNames]);

  return (
    <div className='autocomplete-container'>
      <input
        list='nameSuggestions'
        type='text'
        value={inputValue}
        onChange={(e) => setInputValue(e.target.value)}
        placeholder='Type to search...'
      />
      <datalist id='nameSuggestions'>
        {filteredNames.map((name) => (
          <option key={name} value={name} />
        ))}
      </datalist>
    </div>
  );
}
