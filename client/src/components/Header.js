
import {FaBrain} from "react-icons/fa";
import {useNavigate} from 'react-router-dom'
import AvatarDropdown from "./AvatarDropdown"

function ThemesList({handleClick, currentTheme}) {
  const themes = ["light", "dark", "cupcake", "bumblebee", "emerald", "corporate",
                  "garden", "aqua", "lofi", "fantasy", "black", "dracula", "cmyk",
                  "autumn", "business", "acid", "lemonade", "night", "winter"];

  const themeItems = themes.map(themeItem => {

  // FIXME: replace null : null, just here to quite the error reporting
    const selected = (themeItem === currentTheme) ? null : null;

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
      <ul
          tabIndex={0}
          className="mt-3 p-2 shadow menu menu-compact dropdown-content bg-base-100 rounded-box w-52"
      >
          <li><h3>Select Theme:</h3></li>
          {themeItems}
      </ul>
  );
}

function Header({user, updateUser, onChangeTheme, currentTheme}) {
  const navigate = useNavigate();

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

  const button = (user) ? <button className="btn btn-ghost" onClick={onLogoutClick}>Logout</button> : null;

  return(
    <div className="navbar bg-primary text-primary-content">
      <div className="flex-1">
        <a className="btn btn-ghost normal-case text-xl"><FaBrain style={{fill: "#F2AEB1", stroke: "#505050", strokeWidth: 8}}/>&nbsp;&nbsp;Client Data Manager</a>
      </div>
      <div className="flex-none gap-2">
        {/* Multi-use Avatar/Dropdown element */}
        {button}
        <AvatarDropdown />
      </div>
    </div>
  )
}

export default Header;