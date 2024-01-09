import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHealth(): {
    status: string;
    statusCode: number;
  } {
    return {
      status: 'UP',
      statusCode: 200,
    };
  }
}
