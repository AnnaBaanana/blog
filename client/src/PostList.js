import Post from './Post';

function PostList({posts}) {
    
    return (
        <div>
            <ul>
                {posts.map(post => (
                    <Post 
                        key={post.id}
                        post={post}
                    />)
                )}
            </ul>
        </div>
    )
    };

export default PostList;