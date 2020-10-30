using SendGrid;
using SendGrid.Helpers.Mail;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace Assignment.Utils
{
    public class EmailSender1
    {
        // Please use your API KEY here.
        private const String API_KEY = "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";

        public void Send(String toEmail, String subject, String contents)
        {
            var client = new SendGridClient(API_KEY);
            var from = new EmailAddress("bhu31@student.monash.edu", "Language learning system");
            var to = new EmailAddress(toEmail, "");
            var plainTextContent = contents;
            var htmlContent = "<p>" + contents + "</p>";
            var msg = MailHelper.CreateSingleEmail(from, to, subject, plainTextContent, htmlContent);
            var response = client.SendEmailAsync(msg);
        }

        public void SendWithAttachment(String toEmail, String subject, String contents, String path, string filename)
        {
            var client = new SendGridClient(API_KEY);
            var from = new EmailAddress("noreply@localhost.com", "Language learning system");
            var to = new EmailAddress(toEmail, "");
            var plainTextContent = contents;
            var htmlContent = "<p>" + contents + "</p>";
            var msg = MailHelper.CreateSingleEmail(from, to, subject, plainTextContent, htmlContent);
            var bytes = File.ReadAllBytes(path);
            msg.AddAttachment(filename, Convert.ToBase64String(bytes));
            var response = client.SendEmailAsync(msg);
        }

    }
}