import { initializeApp} from "firebase/app"
import{
    getDocs,
    getFirestore
} from "firebase/firestore"

const firebaseConfig = {
    apiKey: "AIzaSyApdAiW1laBwVifkYuLwCBZUFdtGzHjyLo",
    authDomain: "marco-v----mexican-restaurant.firebaseapp.com",
    projectId: "marco-v----mexican-restaurant",
    storageBucket: "marco-v----mexican-restaurant.appspot.com",
    messagingSenderId: "362886884439",
    appId: "1:362886884439:web:f93bdf40097b8b43298712"
  };


// init firebase app
initializeApp(firebaseConfig)

// init services
const db = getFirestore()

// Collection ref
const colRef = collection(db, "main_dishes")
// get collection data
getDocs(colRef)
  .then((snapshot) => {
    console.log(snapshot.docs)
  })