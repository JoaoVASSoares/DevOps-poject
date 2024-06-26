import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return 'Olá Kellinha, Eu te amo muito <3 <3 <3! TESTE 01';
  }
}
