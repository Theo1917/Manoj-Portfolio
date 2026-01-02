<script>
  import '../styles/global.css';
  let theme = 'dark';

  function toggleTheme() {
    theme = theme === 'dark' ? 'light' : 'dark';
    document.documentElement.setAttribute('data-theme', theme);
  }

  let cursor;
  if (typeof window !== 'undefined') {
    window.addEventListener('mousemove', e => {
      if (cursor) cursor.style.transform = `translate(${e.clientX}px, ${e.clientY}px)`;
    });
  }
</script>

<div class="cursor" bind:this={cursor}></div>
<button class="theme-toggle" on:click={toggleTheme}>◐</button>
<slot />
