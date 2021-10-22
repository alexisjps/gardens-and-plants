const initDisplayForm = () => {
  const button = document.querySelector('.display-form');
  const form = document.querySelector('#new_plant');
  button.addEventListener('click', () => {
    form.classList.remove('d-none');
    button.classList.add('d-none');
  });
}

export { initDisplayForm };
