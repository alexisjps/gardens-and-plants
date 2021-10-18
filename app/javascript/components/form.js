const toggleForm = () => {
  const button = document.querySelector('.toggle-form');
  const form = document.querySelector('#new_plant');
  if (form) {
    button.addEventListener('click', () => {
      form.classList.toggle('d-none');
    });
  }
}

export { toggleForm };
