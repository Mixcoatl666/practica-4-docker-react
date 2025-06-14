import { BrowserRouter, Routes, Route } from 'react-router-dom';
import Layout from './Layout';

function Home() {
  return (
    <div>
      <h1>Bienvenidos a la Página de Inicio Amigo</h1>
      <p>Esta es la página principal de nuestra aplicación React con Docker.</p>
    </div>
  );
}

function About() {
  return (
    <div>
      <h2>Acerca de Nosotros</h2>
      <p>Esta aplicación demuestra React Router, Docker y GitHub Actions.</p>
    </div>
  );
}

function NotFound() {
  return (
    <div>
      <h2>Página no encontrada</h2>
      <p>Lo sentimos, la página que buscas no existe.</p>
    </div>
  );
}

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Layout />}>
          <Route index element={<Home />} />
          <Route path="about" element={<About />} />
          <Route path="*" element={<NotFound />} /> {/* Ruta para manejar 404 */}
        </Route>
      </Routes>
    </BrowserRouter>
  );
}

export default App;