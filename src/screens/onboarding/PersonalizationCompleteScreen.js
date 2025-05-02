import React from 'react';
import { View, Text, StyleSheet } from 'react-native';

const PersonalizationCompleteScreen = () => {
  return (
    <View style={styles.container}>
      <Text>Perfect! Your experience is now personalized</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
});

export default PersonalizationCompleteScreen;
