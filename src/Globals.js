

const URL = "http://localhost:" + "8081";
//const URL = "http://172.17.0.3" + ":"  + "8081";
export default URL;
//ssS

export function saveUser(username, password, loggedIn, role){
    localStorage.setItem('username', username);
    localStorage.setItem('password', password);
    localStorage.setItem('loggedIn', loggedIn);
    localStorage.setItem('role', role);

}


export function removeUser(){
    localStorage.setItem('username', null);
    localStorage.setItem('password', null);
    localStorage.setItem('loggedIn', null);
    localStorage.setItem('role', null);


    return {
        username:null,
        password:null,
        loggedIn:null,
        role:null
    };

}
