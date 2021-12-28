//const host = 'http://localhost:5035'; 

 const host = 'http://nyckiqs.live';

const localStorageSession = localStorage.getItem('sessionId'); 

if(!localStorageSession){
    window.location.replace(host); 
}

async function getSession() {
    const response = await axios.get(`${host}/checkout/session/${localStorageSession}`);
    if(response.data.success){
        console.log("clearing local storage"); 
        localStorage.clear(); 
    } else {
        window.location.replace(host); 
    }
}

getSession()
