<?php
/**
 * @file
 * Enables modules and site configuration for a mishangwo site installation.
 */

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function everright_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = 'Drupal Camp Demo';
  $form['site_information']['site_mail']['#default_value'] = 'webmaster@everright.cn';
  $form['admin_account']['account']['name']['#default_value'] = 'webmaster';
  $form['admin_account']['account']['mail']['#default_value'] = 'everright.chen@gmail.com';
  $form['server_settings']['site_default_country']['#default_value'] = 'CN';
  $form['server_settings']['date_default_timezone']['#default_value'] = 'Asia/Shanghai';
}
