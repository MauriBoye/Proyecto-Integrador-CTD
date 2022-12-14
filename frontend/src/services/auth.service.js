import axios from "axios";

const API_URL = "http://apidigitalbooking-env.eba-t7nfsxa7.us-east-1.elasticbeanstalk.com/api/auth/";

class AuthService {

  async login(email, password) {
    return axios
      .post(API_URL + "login", {
        email,
        password
      })
      .then(response => {
        if (response.data.jwt) {
          localStorage.setItem("user", JSON.stringify(response.data));
        }
        return response.data;
      });
  }

  logout() {
    localStorage.removeItem("user");
  }

  register(name, lastName, email, password) {
    return axios.post(API_URL + "register", {
      'name': name,
      'lastName': lastName,
      'email': email,
      'password': password
    });
  }
  getCurrentUser() {
    return JSON.parse(localStorage.getItem('user'));;
  }
}
export default new AuthService();