import React from 'react';
import { View, Text, StyleSheet, ScrollView } from 'react-native';

const SettingsScreen = () => {
  return (
    <ScrollView style={styles.container}>
      <Text>Settings</Text>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});

export default SettingsScreen;
