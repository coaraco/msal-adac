import { registerPlugin } from '@capacitor/core';
const MaslAdac = registerPlugin('MaslAdac', {
    web: () => import('./web').then(m => new m.MaslAdacWeb()),
});
export * from './definitions';
export { MaslAdac };
//# sourceMappingURL=index.js.map