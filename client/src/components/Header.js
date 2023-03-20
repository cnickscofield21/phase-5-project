import {FaBrain} from "react-icons/fa";
import AvatarDropdown from "./AvatarDropdown"

function Header () {
  return(
    <div className="navbar bg-base-100">
      <div className="flex-1">
        <a className="btn btn-ghost normal-case text-xl"><FaBrain />&nbsp;&nbsp;Client Data Manager</a>
      </div>
      <div className="flex-none gap-2">
        {/* Multi-use Avatar/Dropdown element */}
      <AvatarDropdown />
      </div>
    </div>
  )
}

export default Header;