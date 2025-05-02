import React from 'react';
import { View, Text, StyleSheet, TextInput } from 'react-native';

const ScriptEditorScreen = () => {
  return (
    <View style={styles.container}>
      <Text>Script Editor</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});

export default ScriptEditorScreen;
