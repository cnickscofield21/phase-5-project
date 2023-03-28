import {useState, useEffect} from "react";
import {FaBrain} from "react-icons/fa";
import AvatarDropdown from "./AvatarDropdown"

function Header({user, updateUser}) {
  return(
    <div className="navbar bg-primary text-primary-content">
      <div className="flex-1">
        <a className="btn btn-ghost normal-case text-xl"><FaBrain style={{fill: "#F2AEB1", stroke: "#505050", strokeWidth: 8}}/>&nbsp;&nbsp;Client Data Manager</a>
      </div>
      <div className="flex-none gap-2">
        <AvatarDropdown user={user} updateUser={updateUser} />
      </div>
    </div>
  )
}

export default Header;