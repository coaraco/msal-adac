import { registerPlugin } from '@capacitor/core';

import type { MaslAdacPlugin } from './definitions';

const MaslAdac = registerPlugin<MaslAdacPlugin>('MaslAdac', {
  web: () => import('./web').then(m => new m.MaslAdacWeb()),
});

export * from './definitions';
export { MaslAdac };
