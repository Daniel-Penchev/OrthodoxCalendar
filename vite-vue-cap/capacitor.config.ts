import { CapacitorConfig } from '@capacitor/cli';

const config: CapacitorConfig = {
  appId: 'com.orthodoxCalendar',
  appName: 'Orthodox Calendar',
  webDir: 'www',
  server: {
    androidScheme: 'https'
  }
};

export default config;
