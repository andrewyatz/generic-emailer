# Generic Emailer

Perl script used to email a message to multiple people

# Usage

```bash
./bin/generic-emailer --config example.ini --input example.tsv --template template.txt --live
```

# Live Flag

Specifying `--live` will make the script send out emails. Not specifying this will cause the program to warn email output to screen. Do this before you spam people with a lot of email.

# Example Input

Input should be space separated values such as the following (tab separated and with column headers):

```
name email number
Andy andy@example.com 2.5
Bob bob@example.com 1.25
Kylie kyl@example.com 9
Chardonnay chards@example.com 1.3
```

Each line is a person to send the email to, their email address and anything that should be subs. More examples are available from [`example.tsv`](https://github.com/andrewyatz/generic-emailer/blob/master/example.tsv).

# Template

The template should be a [Template::Tiny](https://metacpan.org/pod/Template::Tiny) file. Attributes are available from the `[template_defaults]` section of the config file and each row of the input TSV file is made available with the same column headers.

# Subject

The subject line is specified in the config file. Subject can also be a [Template::Tiny](https://metacpan.org/pod/Template::Tiny) string and will have the same parameters given to it as the main template.

# Example INI file

See [`example.ini`](https://github.com/andrewyatz/generic-emailer/blob/master/example.ini) for more details

# Configuring Email SMTP Target
The emailer uses [Email::Sender](https://metacpan.org/pod/Email::Sender) to forward the generated messages onto an SMTP server. You configure these settings in the `[smtp]` block of the config INI file. If you do not require SMTP authentication then the configuration is as easy as:

```
[smtp]
host=smtp.example.com
port=25
```

Consult the [Email::Sender::Transport::SMTP](https://metacpan.org/pod/Email::Sender::Transport::SMTP) for more configuration information.
