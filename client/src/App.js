import logo from './logo.svg';
import {useState, useEffect} from 'react';
import './App.css';
import PostList from './PostList';

function App() {
  const [posts, setPosts] = useState([])

  useEffect(() => {
    fetch("/posts").then((r) => {
      if (r.ok) {
        r.json().then(posts => setPosts(posts));
      }
    });
  }, [])

  return (
    <div className="App">
      <body>
        <PostList posts={posts} />
      </body>
    </div>
  );
}

export default App;
