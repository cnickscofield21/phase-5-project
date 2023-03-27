import {useState} from 'react'
import {useNavigate} from 'react-router-dom'
import LoginError from "./LoginError"

function Login({updateUser}) {
  const [formData, setFormData] = useState({
    email: '',
    password: ''
  });
  const [errors, setErrors] = useState([]);
  const navigate = useNavigate();

  const {email, password} = formData;

  function onSubmit(e) {
    e.preventDefault();
    const user = {
      email,
      password
    };
    const configObj = {
      method: 'POST',
      headers: {'Content-Type': 'application/json'},
      body: JSON.stringify(user)
    };

    fetch(`/login`, configObj)
    .then(r => {
      if (r.ok) {
        r.json().then(user => {
          updateUser(user);
          navigate(`/clients`);
          // navigate(`/users/${user.id}`); // TODO: Keep this logic? Convert to client table?
        })
      } else {
        r.json().then(json => setErrors(json.errors))
      }
    })
  }

  function handleChange(e) {
    const {name, value} = e.target;
    setFormData({...formData, [name]: value});
  }

  return(
    <>
      <div className="card w-96 bg-base-100 shadow-xl mx-auto mt-12">
        <div className="card-body">
        <h3 className="text-lg font-bold">Login</h3>
          <form onSubmit={onSubmit}>
            <input type="text" name="email" placeholder="email address" className="input input-bordered w-full max-w-xs my-6" onChange={handleChange} />
            <input type="password" name="password" placeholder="password" className="input input-bordered w-full max-w-xs mb-6" onChange={handleChange} />
            <br/>
            <button className="btn btn-accent" type="submit">Log in</button>
          </form>
          {errors && errors.length > 0 ? <LoginError errors={errors} /> : null}
        </div>
      </div>
    </>
  );
}

export default Login;