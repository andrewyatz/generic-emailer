requires 'Template::Tiny';
requires 'Email::Simple';
requires 'Email::Sender';
requires 'Config::Tiny';
requires 'Text::CSV';

on 'test' => sub {
  requires 'Test::Differences';
};
