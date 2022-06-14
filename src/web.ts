import { WebPlugin } from '@capacitor/core';

import type { MaslAdacPlugin } from './definitions';

export class MaslAdacWeb extends WebPlugin implements MaslAdacPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
