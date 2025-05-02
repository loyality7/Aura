import React from 'react';
import { View, Text, StyleSheet, ScrollView } from 'react-native';

const SubscriptionScreen = () => {
  return (
    <ScrollView style={styles.container}>
      <Text>Subscription Plans</Text>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});

export default SubscriptionScreen;
