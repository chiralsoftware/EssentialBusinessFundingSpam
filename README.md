# EssentialBusinessFundingSpam

Some spammers called Essential Business Funding register more domains every day - this is their block list

For whatever reason, some company called Essential Business Funding or Essential Business Financing scraped our email addresses here
and keeps sending about ten emails a day. They also register about two or three new domain names every day.

This simple Git repository exists so you don't need to get their emails.

To use it, use the attached script in your cron job to run daily. Edit your Postfix main file to do header checks.

We update this every day as these scammers register more domains and send more emails.

# Installing this

Create a file called /etc/postfix/other-checks which contains any local header checks lines you want to use.

Install the update-spam.sh script into /etc/postfix (or anywhere convenient).

Run the update-spam.sh script the first time:

    /etc/postfix/update-spam.sh

Add the update-spam.sh to your cron jobs:

   todo

Add:

    header_checks = regexp:/etc/postfix/header_checks

to `/etc/postfix/main.cf`

Done! You will not receive any more spam and scam emails from Essential Business Funding


