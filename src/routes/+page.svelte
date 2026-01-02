<script>
  import { onMount } from 'svelte';

  onMount(() => {
    // Magnetic nav
    document.querySelectorAll('nav a').forEach(link => {
      link.addEventListener('mousemove', e => {
        const r = link.getBoundingClientRect();
        const x = e.clientX - r.left - r.width / 2;
        const y = e.clientY - r.top - r.height / 2;
        link.style.transform = `translate(${x * 0.25}px, ${y * 0.25}px)`;
      });
      link.addEventListener('mouseleave', () => {
        link.style.transform = 'translate(0,0)';
      });
    });

    // Section reveal
    const observer = new IntersectionObserver(entries => {
      entries.forEach(entry => {
        if (entry.isIntersecting) entry.target.classList.add('reveal');
      });
    }, { threshold: 0.2 });

    document.querySelectorAll('.section').forEach(sec => observer.observe(sec));
  });
</script>

<main class="hero">
  <div class="hero-inner">
    <h1>MANOJ SRIVATSAV</h1>
    <p class="tag">AI RESEARCHER & DEVELOPER</p>
    <nav>
      <a href="#about">ABOUT</a>
      <a href="#timeline">TIMELINE</a>
      <a href="#works">WORKS</a>
      <a href="#contact">CONTACT</a>
    </nav>
  </div>
</main>

<section id="about" class="section">
  <h2>ABOUT</h2>
  <p>I build intelligent systems and research advanced AI models.</p>
</section>

<section id="timeline" class="section">
  <h2>TIMELINE</h2>
  <p>2022 → AI & ML · 2024 → Deep Learning · 2025 → Advanced Systems</p>
</section>

<section id="works" class="section">
  <h2>WORKS</h2>
  <p>AI Heat Transfer · Fitness Posture AI · Smart Home AI</p>
</section>

<section id="contact" class="section">
  <h2>CONTACT</h2>
  <p>Let's build something exceptional.</p>
</section>

<style>
.hero {
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.hero-inner {
  transform: translateY(40px);
  opacity: 0;
  animation: fadeIn 1.2s ease forwards;
}

@keyframes fadeIn {
  to {
    transform: translateY(0);
    opacity: 1;
  }
}

h1 {
  font-size: clamp(2.8rem, 6vw, 4.2rem);
  letter-spacing: 0.22em;
}

.tag {
  margin-top: 18px;
  font-size: 0.8rem;
  letter-spacing: 0.35em;
  color: var(--muted);
}

nav {
  margin-top: 70px;
  display: flex;
  gap: 56px;
  justify-content: center;
}

nav a {
  font-size: 0.65rem;
  letter-spacing: 0.35em;
  color: var(--text);
  text-decoration: none;
}
</style>
