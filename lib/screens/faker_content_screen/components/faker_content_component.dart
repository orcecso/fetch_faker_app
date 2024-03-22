import 'package:cached_network_image/cached_network_image.dart';
import 'package:faker_fectcher_exam/models/persons_model/persons_model.dart';
import 'package:faker_fectcher_exam/utils/constants.dart';
import 'package:faker_fectcher_exam/widgets/v_spacer.dart';
import 'package:flutter/material.dart';

class FakerContentComponent extends StatelessWidget {
  const FakerContentComponent({super.key, required this.personsData});

  final Persons personsData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Faker Contents"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            const Text(
              "Here are the details of the person you selected",
              style: kBodyTextStyle24BlackBold,
              textAlign: TextAlign.center,
            ),
            VSpace.xl,
            _buildImage(),
            VSpace.xxl,
            _buildName(),
            _buildEmail(),
            _buildPhoneNumber(),
            _buildBirthday(),
            _buildGender(),
            _buildAddress(),
            _buildWebsite(),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        height: imageHeight200,
        width: imageWidth50,
        child: CachedNetworkImage(
          imageUrl: personsData.image ?? '',
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => Image.asset(
            'assets/images/default_image.png',
            gaplessPlayback: true,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  Widget _buildName() {
    return Text(
      'Name :${personsData.firstname} ${personsData.lastname}',
      style: kBodyTextStyle18BlackBold,
    );
  }

  Widget _buildEmail() {
    return Text(
      'Email : ${personsData.email ?? ''}',
      style: kBodyTextStyle16BlackBold,
    );
  }

  Widget _buildPhoneNumber() {
    return Text(
      'PhoneNumber : ${personsData.phone ?? ''}',
      style: kBodyTextStyle16BlackBold,
    );
  }

  Widget _buildBirthday() {
    return Text(
      'Birthday : ${personsData.birthday ?? ''}',
      style: kBodyTextStyle16BlackBold,
    );
  }

  Widget _buildGender() {
    return Text(
      'Gender : ${personsData.gender ?? ''}',
      style: kBodyTextStyle16BlackBold,
    );
  }

  Widget _buildAddress() {
    final address = personsData.address;
    return Text(
      'Address: ${address!.street}, ${address.city}, ${address.country}',
      style: kBodyTextStyle16BlackBold,
    );
  }

  Widget _buildWebsite() {
    return Text(
      'Website : ${personsData.website ?? ''}',
      style: kBodyTextStyle16BlackBold,
    );
  }
}
