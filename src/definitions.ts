export interface MaslAdacPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
