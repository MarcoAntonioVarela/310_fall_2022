import { initializeApp} from "firebase/app"
import{
    getDocs,
    getFirestore
} from "firebase/firestore"

const firebaseConfig = {
    apiKey: "AIzaSyDnQh8hQytj_xEHu-GDdsGlO9ZQQjs-gVM",
    authDomain: "final---mexican-restaurant.firebaseapp.com",
    projectId: "final---mexican-restaurant",
    storageBucket: "final---mexican-restaurant.appspot.com",
    messagingSenderId: "802473959253",
    appId: "1:802473959253:web:556d714fdf6cdabf9b59dc"
  };


// init firebase app
initializeApp(firebaseConfig)

// init services
const db = getFirestore()

// Collection ref
const colRef = collection(db, 'desserts')
// get collection data
getDocs(colRef)
  .then((snapshot) => {
    console.log(snapshot.docs)
  })