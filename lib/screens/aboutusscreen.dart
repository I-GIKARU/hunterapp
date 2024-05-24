import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'House Hunters Platform',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Welcome to House-Hunter, your ultimate destination for finding your dream home. With a diverse range of properties from cozy apartments to luxurious estates, House-Hunter caters to every taste and budget. Our advanced search tools and personalized assistance from experienced agents ensure a seamless and enjoyable home-buying journey. At House-Hunter, we\'re committed to helping you turn your dream home into a reality. Join us today and let\'s embark on this exciting journey together.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 40.0),
            Text(
              'Testimonials',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Unveiling Our Unique Identity: Delving Deep into the Distinctive Characteristics That Define Us as House Hunters',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Our experience with House Hunters has been nothing short of exceptional. Their team of dedicated real estate experts provided invaluable guidance throughout our home search journey. From understanding our unique needs to navigating the complexities of the market, they exceeded our expectations at every turn.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'House Hunters Team\nReal Estate Experts',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'House Hunters truly stands out for their unwavering commitment to customer satisfaction. As property specialists, they demonstrated unmatched professionalism and attention to detail, ensuring that every aspect of our transaction was handled with care and precision.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'House Hunters Team\nProperty Specialists',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Working with House Hunters has been a game-changer for us. Their team of home search consultants went above and beyond to find us the perfect home. Their dedication, expertise, and personalized approach made the entire process seamless and stress-free.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'House Hunters Team\nHome Search Consultants',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 40.0),
            Text(
              'Find Us',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Get in touch with us today. We are here to help you find your dream home. Reach out to us via phone, email, or social media.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Contacts',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Phone: +25413801284\nEmail: info@asgardfusion.com\nLocation: Nyeri Town, Kimati Street',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Socials',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Facebook: asgardfusion\nTwitter: asgardfusion\nInstagram: asgardfusion',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 40.0),
            Text(
              'All rights reserved @2024\nPowered by Asgard Fusion',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
