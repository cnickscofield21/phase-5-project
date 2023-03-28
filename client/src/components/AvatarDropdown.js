import { useState, useEffect } from "react";
import { useNavigate } from 'react-router-dom';
import { FaCheck } from 'react-icons/fa';

function ThemesList({handleClick, currentTheme}) {
  const themes = ["acid", "aqua", "autumn", "bumblebee", "business",
                  "corporate", "cupcake", "dark", "dracula",
                  "emerald", "fantasy", "garden", "halloween",
                  "lemonade", "light", "night", "pastel",
                  "synthwave", "valentine", "winter"];

  const themeItems = themes.map(themeItem => {
  const selected = (themeItem === currentTheme) ? <FaCheck /> : null;

    return(
      <li
        data-theme-value={themeItem}
        onClick={handleClick}
        key={themeItem}
      >
        <a data-theme-value={themeItem}>
          {themeItem}&nbsp;{selected}
        </a>
      </li>
    );
  });

  return(
    <>
        <li><h3>Select Theme:</h3></li>
        {themeItems}
    </>
  );
}

function AvatarDropdown({user, updateUser}) {
  const [theme, setTheme] = useState(getTheme);
  const navigate = useNavigate();

  useEffect(() => {
    document.documentElement.setAttribute('data-theme', theme);
  }, [theme]);

  function getTheme() {
    return (localStorage.getItem("cdm-theme")) ? localStorage.getItem("cdm-theme") : "";
  };

  const onChangeTheme = (newTheme) => {
    localStorage.setItem("cdm-theme", newTheme);
    setTheme(newTheme);
  };


  // Avatar appearance logic
  const initial = (user) ? user.first_name.charAt(0) : null;
  const avatarColors = {
    A: "secondary", B: "accent", C: "neutral", D: "info", E: "success",
    F: "warning", G: "error", H: "secondary", I: "accent", J: "neutral",
    K: "info", L: "success", M: "warning", N: "error", O: "secondary",
    P: "accent", Q: "neutral", R: "info", S: "success", T: "warning",
    U: "error", V: "secondary", W: "accent", X: "neutral", Y: "info",
    Z: "success"
  };

  const onLogoutClick = () => {
    const configObj = {
      method: "DELETE",
      headers: {
          "Content-Type": "application/json",
          Accept: "application/json"
      }
    };

    fetch("/logout", configObj)
    .then(r => {
      if (r.ok) {
        updateUser(null);
        navigate(`/`);
      } else {
        // r.json().then(data => setErrors(data.errors));
      }
    })
  }

  const handleClick = (e) => {
    onChangeTheme(e.target.dataset.themeValue);
  }

  const currentTheme = getTheme();

  if (user) {
    return (
      <div className="dropdown dropdown-end">
        <label tabIndex={0} className="btn btn-ghost btn-circle avatar">
          <div className={`w-10 rounded-full bg-${avatarColors[initial]} text-content`}>
            <div className="pt-3">{initial}</div>
          </div>
        </label>
        <ul tabIndex={0} className="mt-3 p-2 shadow menu menu-compact dropdown-content bg-base-100 rounded-box w-52">
          <li onClick={onLogoutClick}>
            <a className="justify-between">
              Logout
            </a>
          </li>
          <ThemesList handleClick={handleClick} currentTheme={currentTheme}/>
        </ul>
      </div>
    )
  } else {
    return null;
  }
}

export default AvatarDropdown;