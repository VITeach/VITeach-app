import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(20.0),
          children: [
            Padding(
              padding: EdgeInsets.all(2),
              child: SizedBox(
                height: 150,
                width: 150,
                child: Image.asset("assets/logos/tempLogo.png"),
              ),
            ),
            Html(
              data: """
                <h2 style="text-align: center;">Privacy Policy</h2>
    <h3>Introduction</h3>
    <p style="text-align: justify;">Welcome to Viteach Learning App, a platform dedicated to providing educational content and quizzes to underprivileged children. We are committed to protecting the privacy and security of our users' personal information. This Privacy Policy outlines how we collect, use, and safeguard your information.</p>
    <h3>Information We Collect</h3>
    <h4>1. Usage Information:</h4>
    <p style="text-align: justify;">- We collect information on how you interact with our app, such as the types of content you view or engage with, the features you use, and the time spent on the app.</p>
    <h4>2. Device Information:</h4>
    <p style="text-align: justify;">- We may collect information about the device you use to access the app, including the hardware model, operating system, and unique device identifiers.</p>
    <h3>How We Use Your Information</h3>
    <h4>1. To Provide and Improve Our Services:</h4>
    <p style="text-align: justify;">- We use your information to operate and enhance the app's functionality, ensuring a better learning experience for all users.</p>
    <h4>2. To Communicate with You:</h4>
    <p style="text-align: justify;">- If you provide contact information for inquiries or feedback, we may use it to respond to your messages.</p>
    <h4>3. To Ensure Safety and Security:</h4>
    <p style="text-align: justify;">- We use your information to protect against fraud, abuse, and misuse of the app.</p>
    <h4>4. To Analyze and Understand Usage:</h4>
    <p style="text-align: justify;">- We may use aggregated and anonymized data to understand user behavior and improve our services.</p>
    <h3>Information Sharing and Disclosure</h3>
    <h4>1. With Your Consent:</h4>
    <p style="text-align: justify;">- We will share your information with third parties only when we have your explicit consent.</p>
    <h4>2. For Legal Reasons:</h4>
    <p style="text-align: justify;">- We may disclose your information if required by law or to protect the rights, property, or safety of our users and others.</p>
    <h4>3. With Service Providers:</h4>
    <p style="text-align: justify;">- We may share information with third-party service providers who assist us in operating the app, provided they adhere to our privacy standards.</p>
    <h3>Data Security</h3>
    <p style="text-align: justify;">We implement appropriate security measures to protect your information from unauthorized access, alteration, disclosure, or destruction. Despite our efforts, no security measures are completely secure, and we cannot guarantee absolute security.</p>
    <h3>Your Choices and Rights</h3>
    <h4>1. Access and Update Information:</h4>
    <p style="text-align: justify;">- If you provide any personal information for specific interactions, you can request to access and update it by contacting us.</p>
    <h4>2. Opt-Out of Communications:</h4>
    <p style="text-align: justify;">- You can opt-out of receiving promotional communications from us by following the instructions in those communications.</p>
    <h3>Changes to This Privacy Policy</h3>
    <p style="text-align: justify;">We may update this Privacy Policy from time to time. Any changes will be posted on this page, and we will notify you of significant changes through the app or via email.</p>
    <h3>Contact Us</h3>
    <p style="text-align: justify;">If you have any questions or concerns about this Privacy Policy or our data practices, please contact us at [your contact information].</p>
""",
            ),
          ],
        ),
      ),
    );
  }
}
