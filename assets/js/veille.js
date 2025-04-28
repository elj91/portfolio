AOS.init();

// Veille technologique page script
document.addEventListener('DOMContentLoaded', function() {
  // Assurez-vous que la page est visible et complètement chargée
  setTimeout(function() {
    // Masquer le loader si présent
    const loader = document.querySelector('.loader-container');
    if (loader) {
      loader.classList.add('disappear');
    }
    
    // Réactiver le défilement une fois la page chargée
    document.querySelector('body').classList.remove('no-scroll-preload');
  }, 1000);
  
  // Amélioration des animations des cartes
  const cards = document.querySelectorAll('.card');
  if (cards.length > 0) {
    cards.forEach(card => {
      card.addEventListener('mouseenter', function() {
        this.classList.add('hovered');
      });
      
      card.addEventListener('mouseleave', function() {
        this.classList.remove('hovered');
      });
    });
  }
  
  // Highlight du lien actif dans la navigation
  // Cette fonction est probablement déjà dans app.js, mais nous l'ajoutons ici par sécurité
  setTimeout(function() {
    const navLinks = document.querySelectorAll('a.nav-link');
    if (navLinks.length > 0) {
      navLinks.forEach(link => {
        if (link.getAttribute('href') === 'veille.html') {
          link.classList.add('current-link');
        }
      });
    }
  }, 1500);
});

// Vous pouvez ajouter ici d'autres fonctionnalités spécifiques à la page de veille
// Par exemple, une galerie d'images, des filtres, etc.
