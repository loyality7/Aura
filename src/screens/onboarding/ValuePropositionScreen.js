import React from 'react';
import { View, Text, StyleSheet } from 'react-native';

const ValuePropositionScreen = () => {
  return (
    <View style={styles.container}>
      <Text>Discover the benefits of Speaking Practice</Text>
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

export default ValuePropositionScreen;
