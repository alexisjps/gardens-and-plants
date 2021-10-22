const initToggleForm = () => {
  const button = document.querySelector('.toggle-form');
  const form = document.querySelector('#new_plant');
  button.addEventListener('click', () => {
    form.classList.remove('d-none');
    button.classList.add('d-none');
  });
}

export { initToggleForm };
