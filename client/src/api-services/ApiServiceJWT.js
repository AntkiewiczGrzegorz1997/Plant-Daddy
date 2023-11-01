// const BASE_URL = 'http://localhost:3000';

const BASE_URL = 'http:/18.159.59.226:3000';

const apiServiceJWT = {};

apiServiceJWT.register = (user) => {
  return fetch(`${BASE_URL}/register`, {
    method: 'POST',
    credentials: 'include',
    mode: 'cors',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(user),
  })
    .then((res) => res.json())
    .catch((err) => console.log(err));
};

apiServiceJWT.login = (user) => {
  return fetch(`${BASE_URL}/login`, {
    method: 'POST',
    credentials: 'include',
    mode: 'cors',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(user),
  })
    .then((res) => res.json())
    .catch((err) => console.log(err));
};

apiServiceJWT.profile = (accessToken) => {
  return fetch(`${BASE_URL}/profile`, {
    method: 'GET',
    credentials: 'include',
    mode: 'cors',
    headers: {
      'Content-Type': 'application/json',
      Authorization: `Bearer ${accessToken}`,
    },
  })
    .then(async (res) => {
      const data = await res.json();

      return data;
    })
    .catch((err) => console.log(err));
};
apiServiceJWT.username = (accessToken) => {
  return fetch(`${BASE_URL}/profile/username`, {
    method: 'GET',
    credentials: 'include',
    mode: 'cors',
    headers: {
      'Content-Type': 'application/json',
      Authorization: `Bearer ${accessToken}`,
    },
  })
    .then(async (res) => {
      const data = await res.json();

      return data;
    })
    .catch((err) => console.log(err));
};
apiServiceJWT.deleteImg = (accessToken, plant_id, index) => {
  return fetch(`${BASE_URL}/profile/deleteImg`, {
    method: 'PUT',
    credentials: 'include',
    mode: 'cors',
    headers: {
      'Content-Type': 'application/json',
      Authorization: `Bearer ${accessToken}`,
    },
    body: JSON.stringify({
      plant_id: plant_id,
      index: index,
    }),
  })
    .then(async (res) => {
      const data = await res.json();

      return data;
    })
    .catch((err) => console.log(err));
};

apiServiceJWT.addUploadedImages = async (accessToken, uploadedImg) => {
  try {
    const response = await fetch(`${BASE_URL}/uploadImg`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${accessToken}`,
      },
      body: JSON.stringify({
        user_ID: uploadedImg.user_ID,
        plant_ID: uploadedImg.plant_ID,
        image_url: uploadedImg.image_url,
      }),
    });
    const data = await response.json();
    return data;
  } catch (e) {
    console.error(e);
  }
};

apiServiceJWT.logout = (tokenName) => {
  localStorage.removeItem(tokenName);
};

export default apiServiceJWT;
