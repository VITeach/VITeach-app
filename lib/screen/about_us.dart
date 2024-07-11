import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
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
                <h2 style="text-align: center;">About Us</h2>
    <h3>Our Mission</h3>
    <p style="text-align: justify;">Welcome to Viteach Learning App! Our mission is to make quality education accessible to underprivileged children across the globe. We believe that every child, regardless of their socio-economic background, deserves the opportunity to learn, grow, and reach their full potential. Viteach is committed to bridging the educational gap by providing engaging, interactive, and fun learning resources.</p>
    <h3>Our Vision</h3>
    <p style="text-align: justify;">We envision a world where every child has access to the educational tools they need to succeed. Our aim is to create an inclusive learning environment that not only imparts knowledge but also sparks curiosity and fosters a love for learning. Through innovative technology and community collaboration, we strive to make a lasting impact on the lives of children and their communities.</p>
    <h3>What We Offer</h3>
    <p style="text-align: justify;">Viteach Learning App offers a wide range of educational content tailored to the needs of underprivileged children. Our platform includes:</p>
    <ul style="text-align: justify;">
        <li>Interactive Quizzes: Engaging quizzes that make learning fun and interactive.</li>
        <li>Educational Content: A rich library of learning materials covering various subjects and topics.</li>
        <li>Content Uploads: Club members can contribute by uploading educational content, fostering a community-driven approach to learning.</li>
        <li>Gamification: Reward-based learning with badges and certificates to motivate and encourage students.</li>
        <li>User-Friendly Interface: Simple, intuitive design ensuring easy navigation and accessibility for all age groups.</li>
    </ul>
    <h3>Our Values</h3>
    <p style="text-align: justify;">Inclusivity: We believe in providing equal learning opportunities for all children.</p>
    <p style="text-align: justify;">Innovation: We embrace technology to create cutting-edge educational tools and resources.</p>
    <p style="text-align: justify;">Community: We foster a collaborative environment where club members and users contribute to the learning experience.</p>
    <p style="text-align: justify;">Integrity: We are committed to maintaining the highest standards of honesty and transparency in all our endeavors.</p>
    <h3>Our Story</h3>
    <p style="text-align: justify;">The journey of Viteach began with a vision to transform education for children who need it the most. Our founders, a group of passionate educators and tech enthusiasts, realized the potential of digital learning to reach underprivileged communities. Through tireless efforts and continuous innovation, Viteach has grown into a platform that not only educates but also empowers.</p>
    <h3>Join Us</h3>
    <p style="text-align: justify;">Join us in our mission to make a difference. Whether you are a student, a teacher, a parent, or a volunteer, there is a place for you in the Viteach community. Together, we can create a brighter future for the next generation.</p>
    <h3>Contact Us</h3>
    <p style="text-align: justify;">Have questions or want to learn more about Viteach Learning App? Feel free to reach out to us at [your contact information]. We would love to hear from you!</p>
""",
            ),
          ],
        ),
      ),
    );
  }
}
