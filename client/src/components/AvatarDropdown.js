function AvatarDropdown({setUser}) {


  return (
    <div className="dropdown dropdown-end">
      <label tabIndex={0} className="btn btn-ghost btn-circle avatar">
        <div className="w-10 rounded-full  bg-accent text-accent-content">
          <div className="pt-3">S</div>
        </div>
      </label>
      <ul tabIndex={0} className="mt-3 p-2 shadow menu menu-compact dropdown-content bg-base-100 rounded-box w-52">
        <li>
          <a className="justify-between">
            Profile
          </a>
        </li>
        <li><a>Theme</a></li>
      </ul>
    </div>
  );
}

export default AvatarDropdown;